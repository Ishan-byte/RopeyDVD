﻿#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DVDRental.Models;
using Microsoft.AspNetCore.Authorization;

namespace DVDRental.Controllers
{
    [Authorize(Roles = "Manager, Assistant")]
    public class LoanTypesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public LoanTypesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: LoanTypes
        public async Task<IActionResult> Index()
        {
            return View(await _context.LoanType.ToListAsync());
        }

        // GET: LoanTypes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var loanType = await _context.LoanType
                .FirstOrDefaultAsync(m => m.LoanTypeNumber == id);
            if (loanType == null)
            {
                return NotFound();
            }

            return View(loanType);
        }

        // GET: LoanTypes/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: LoanTypes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("LoanTypeNumber,Loantype,LoanDuration")] LoanType loanType)
        {
            if (ModelState.IsValid)
            {
                _context.Add(loanType);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(loanType);
        }

        // GET: LoanTypes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var loanType = await _context.LoanType.FindAsync(id);
            if (loanType == null)
            {
                return NotFound();
            }
            return View(loanType);
        }

        // POST: LoanTypes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("LoanTypeNumber,Loantype,LoanDuration")] LoanType loanType)
        {
            if (id != loanType.LoanTypeNumber)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(loanType);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!LoanTypeExists(loanType.LoanTypeNumber))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(loanType);
        }

        // GET: LoanTypes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var loanType = await _context.LoanType
                .FirstOrDefaultAsync(m => m.LoanTypeNumber == id);
            if (loanType == null)
            {
                return NotFound();
            }

            return View(loanType);
        }

        // POST: LoanTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var loanType = await _context.LoanType.FindAsync(id);
            _context.LoanType.Remove(loanType);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool LoanTypeExists(int id)
        {
            return _context.LoanType.Any(e => e.LoanTypeNumber == id);
        }
    }
}
